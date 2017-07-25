require_relative './exceptions'

ERRORS_BY_STATUS = {
  '400' => FastTrack::BadRequestException,
  '401' => FastTrack::UnauthorizedException,
  '404' => FastTrack::NotFoundException,
  '405' => FastTrack::MethodNotAllowedException,
  '406' => FastTrack::NotAcceptableException,
  '429' => FastTrack::TooManyRequestsException
}

ERRORS_BY_ERROR_CODE = {
  '1' => FastTrack::VersionRequiredException,
  '2' => FastTrack::NoResultException,
  '3' => FastTrack::BadParametersException,
  '4' => FastTrack::InvalidVersionException
}

def exception_for_response(status, errorCode)
  fast_track_error = nil

  if errorCode != nil
    fast_track_error = ERRORS_BY_ERROR_CODE[errorCode]
  end

  if fast_track_error == nil && status != nil
    fast_track_error = ERRORS_BY_STATUS[status.to_s]

    if status >= 500 && status < 600
      fast_track_error = FastTrack::InternalServerException
    end
  end

  if fast_track_error == nil
    fast_track_error = Exception
  end

  return fast_track_error
end
